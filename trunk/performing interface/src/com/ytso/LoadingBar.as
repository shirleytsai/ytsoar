﻿/*  * PROJECT: AR Instrument * http://ytsoar.googlecode.com/ * Copyright 2010 Google Inc * -------------------------------------------------------------------------------- * This work complements FLARManager, developed by Eric Socolofsky * http://transmote.com/flar * FLARManager is Copyright 2009, Eric Socolofsky * * This work also complements FLARToolkit, developed by Saqoosha as part of the Libspark project. * http://www.libspark.org/wiki/saqoosha/FLARToolKit * FLARToolkit is Copyright (C)2008 Saqoosha, * and is ported from NYARToolkit, which is ported from ARToolkit.* * This program is free software; you can redistribute it and/or * modify it under the terms of the GNU General Public License * as published by the Free Software Foundation; either version 2 * of the License, or (at your option) any later version. *  * This program is distributed in the hope that it will be useful, * but WITHOUT ANY WARRANTY; without even the implied warranty of * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the * GNU General Public License for more details. *  * You should have received a copy of the GNU General Public License * along with this framework; if not, write to the Free Software * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA *  */package com.ytso {	import flash.geom.*  	import flash.display.*	import flash.events.*;	  	import com.ytso.components.SponsorLogo;	public class LoadingBar extends Sprite{		private var backGround:Sprite = new Sprite();		private var backGround1:Sprite = new Sprite();		private var stroke:Sprite = new Sprite();		private var _progress:Number = 0;				private var sponsorLogo:SponsorLogo = new SponsorLogo();				 private var _width = 570;		 		 private var opaqueBg:Boolean = false;		public function LoadingBar(opaque:Boolean) {			this.opaqueBg = opaque;			this.addEventListener(Event.ADDED_TO_STAGE, addedToStage, false, 0, true);		}		public function addedToStage(e:Event) {									backGround.graphics.beginFill(0x000000, opaqueBg ? 1 : 0);			backGround.graphics.drawRect(0,0,stage.stageWidth,stage.stageHeight);			backGround.graphics.endFill();						backGround1.graphics.beginFill(0xffffff, 0);			backGround1.graphics.drawRoundRect(0,0,600,50,20,20);			backGround1.graphics.endFill();									sponsorLogo.x = backGround.width /2 - (sponsorLogo.width /2)			sponsorLogo.y = 130;												stroke.x = 15;			stroke.y = 15;						backGround1.x = backGround.width /2 - (backGround1.width /2)			backGround1.y = 330;									this.addChild(backGround);						backGround.addChild(sponsorLogo);												backGround.addChild(backGround1);			backGround1.addChild(stroke);						this.progress = .5;					}						public function set progress(value:Number){			var matr:Matrix = new Matrix();  			matr.createGradientBox(25, 25, 1.57, 0, 0);			var progressWidth:Number = value * _width;						stroke.graphics.clear();			stroke.graphics.beginGradientFill(GradientType.LINEAR, [0xeeeeee,0xcccccc, 0x999999, 0xeeeeee],[.8, .8, 1, .8],[0,120,130, 255],matr,SpreadMethod.PAD,'rgb');			//bar.graphics.beginFill(0xff0000, .4);			stroke.graphics.drawRoundRect(0,0,progressWidth,25,5,5);			stroke.graphics.endFill();									stroke.graphics.lineStyle(1,0x999999,.75);			stroke.graphics.drawRoundRect(0,0,_width,25,5,5);			stroke.graphics.endFill();								}	}	}