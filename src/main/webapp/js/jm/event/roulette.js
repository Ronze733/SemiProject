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

const app = Vue.createApp({
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
			count: 0,
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
		historyValues(){
			return this.history.join(',');
		},
	},
	methods:{
		play(){
			this.count++;
			this.buttonDisabled=true;
			this.current = Math.floor(Math.random() * this.items.length);
			this.history.push(this.currentItem.value);
			try{
			console.log(document.getElementsByName("eventRoulette-hideval")[this.count - 1]);
			} catch(error){
				console.log(error);
			}
			
			setTimeout(()=>{
				this.buttonDisabled = false;
			}, 5000);
		},
	},
	mounted(){
		this.items.forEach((el, idx)=>{
			// itemStyles 정의
			this.itemStyles.push({
				"transform":"rotate(" + (this.segment * idx) + "deg)",
				
			});
			// lineStyles 정의
			this.lineStyles.push({
				"transform":"rotate(" + (this.segment * idx + this.offset) + "deg)",
			});
		});
	},
});

app.mount("#eventRoulette");