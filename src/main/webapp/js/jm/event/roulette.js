/**
 * 
 */
 
 function checkTicket(){
	return true;
}

function checkPoint(){
	return true;
}

function minusPoint(){
	
}
 
function handleButtonClick(){
	if(checkTicket()){
		return true;
	} else {
		if(checkPoint()){
			return true;
		} else {
			alert("point가 없어서 룰렛을 돌릴 수 없습니다.");
			return false;
		}
	}
}

Vue.createApp({
	data(){
		return {
			items:[
				{value: 1000},
				{value: 5000},
				{value: 500},
				{value: -300},
				{value: 0}
			],
			itemStyles:[],
			lineStyles:[],
			current: 0,
			count: 3,
			history:[],
			buttonDisabled: false,
		};
	},
	computed:{
		segment(){
			return 360 / this.items.length;
		},
		offset(){
			return this.segment / 2;
		},
		angle(){
			let temp = this.current * this.segment;
			let randomOffset = Math.floor(Math.random() * this.segment) - this.offset - 1;
			let cycle = this.count * 360 * 5;
			
			return -(temp + randomOffset + cycle);
		},
		rouletteStyle(){
			return {
				"transform":"rotate("+ this.angle +"deg)"
			};
		},
		currentItem(){
			return this.items[this.current];
		},
	},
	method:{
		play(){
			this.buttonDisabled=true;
			this.count++;
			this.current = Math.floor(Math.random() * this.items.length);
			this.history.push(this.currentItem.value);
			
			setTimeout(()=>{
				this.buttonDisabled = false;
			}, 5000);
		},
		
	}
}).mount("#eventRoulette");