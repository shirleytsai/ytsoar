﻿/*  * PROJECT: AR Instrument * http://ytsoar.googlecode.com/ * Copyright 2010 Google Inc * -------------------------------------------------------------------------------- * This work complements FLARManager, developed by Eric Socolofsky * http://transmote.com/flar * FLARManager is Copyright 2009, Eric Socolofsky * * This work also complements FLARToolkit, developed by Saqoosha as part of the Libspark project. * http://www.libspark.org/wiki/saqoosha/FLARToolKit * FLARToolkit is Copyright (C)2008 Saqoosha, * and is ported from NYARToolkit, which is ported from ARToolkit.* * This program is free software; you can redistribute it and/or * modify it under the terms of the GNU General Public License * as published by the Free Software Foundation; either version 2 * of the License, or (at your option) any later version. *  * This program is distributed in the hope that it will be useful, * but WITHOUT ANY WARRANTY; without even the implied warranty of * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the * GNU General Public License for more details. *  * You should have received a copy of the GNU General Public License * along with this framework; if not, write to the Free Software * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA *  */package com.ytso {	import flash.display.Sprite;	import flash.events.Event;		public class LoadingVeil extends Sprite{				private var _background:Sprite = new Sprite();		private var dots:Array = new Array();				private var frame:Number = 0;		private var index:int = 0;				private var dotSize:Number = 4;				private var _height:Number;		private var _width:Number;				public function LoadingVeil(height:Number = 480, width:Number = 700){			_height = height;			_width = width;						dots[0] = new Sprite();			dots[1] = new Sprite();			dots[2] = new Sprite();						_background.graphics.beginFill(0x000000, 1);			_background.graphics.drawRect(0,0,_width,_height);			_background.graphics.endFill();						dots[0].graphics.beginFill(0xffffff,.5);			dots[0].graphics.drawCircle(0,0,dotSize);			dots[0].graphics.endFill();						dots[1].graphics.beginFill(0xffffff,.5);			dots[1].graphics.drawCircle(0,0,dotSize);			dots[1].graphics.endFill();						dots[2].graphics.beginFill(0xffffff,.5);			dots[2].graphics.drawCircle(0,0,dotSize);			dots[2].graphics.endFill();						dots[0].x = (_background.width/2 + dots[1].width /2) - (dotSize * 3.5);			dots[1].x = _background.width/2 + dots[1].width /2;			dots[2].x = (_background.width/2 + dots[1].width /2) +(dotSize * 3.5);									dots[0].y = _background.height/2 + dots[1].height /2;			dots[1].y = _background.height/2 + dots[1].height /2;			dots[2].y = _background.height/2 + dots[1].height /2;									_background.addChild(dots[0]);			_background.addChild(dots[1]);			_background.addChild(dots[2]);								}						public function show(){			this.addChild(_background);			this.addEventListener(Event.ENTER_FRAME, animate);		}				private function animate(e:Event){			frame ++;			if(frame % 5 == 0){												if(index == 0){					dots[0].alpha = 1;				}								if(index == 1){					dots[1].alpha = 1;				}								if(index == 2){					dots[2].alpha = 1;				}								if(index == 4){					index = 0;					dots[0].alpha = 0;					dots[1].alpha = 0;					dots[2].alpha = 0;				}else{					index ++;				}							}								}	}	}