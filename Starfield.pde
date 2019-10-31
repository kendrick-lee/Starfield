Particle[] bob;
void setup()
{
	background(0);
	size(600,600);
	bob = new Particle[400];   
	for(int i = 1; i < bob.length; i++){
		bob[i] = new Particle();
		bob[0] = new OddballParticle();
	}
}

void draw()
{
	fill(0);
	rect(0, 0, 600, 600);
	int y = 600;
	fill(255);
	ellipse(300, y, 5, 5);
	y = y - 1;	
	

		for(int i = 0; i < bob.length; i++){
 			bob[i].show();    
 			bob[i].move();
 		}
	
			
}
class Particle
{
	double myX,myY,mySpeed,myAngle;
	int myColor;
	Particle(){
		myX = 300;
		myY = 300;
		mySpeed = Math.random()*6;
		myAngle = Math.random()*2*Math.PI;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*40),(int)(Math.random()*20));

	}
	void move(){
		myX = myX + Math.cos(myAngle) * mySpeed;
		myY= myY + Math.sin(myAngle) * mySpeed;
		if(myX < 0){
			myX = myY = 300;
			mySpeed = Math.random()*6;
			myAngle = Math.random()*2*Math.PI;
		}
		if(myX > 600){
			myX = myY = 300;
			mySpeed = Math.random()*6;
			myAngle = Math.random()*2*Math.PI;
		}
		if(myY < 0){
			myX = myY = 300;
			mySpeed = Math.random()*6;
			myAngle = Math.random()*2*Math.PI;	
		}
		if(myY > 600){
			myX = myY = 300;
			mySpeed = Math.random()*6;
			myAngle = Math.random()*2*Math.PI;
		}

	}
	void show(){
		noStroke();
		fill(myColor);
 		ellipse((int)myX,(int)myY, 5,5);
	}
}

class OddballParticle extends Particle //inherits from Particle
{
	OddballParticle(){
		myX = 300;
		myY = 300;
		mySpeed = Math.random()*6;
		myAngle = Math.random()*2*Math.PI;
		myColor = color(23,24,56);
	}
	void move(){
		myX = myX + Math.cos(myAngle) * mySpeed;
		myY= myY + Math.sin(myAngle) * mySpeed;
		if(myX < 0){
			myX = myY = 300;
			mySpeed = Math.random()*6;
			myAngle = Math.random()*2*Math.PI;
		}
		if(myX > 600){
			myX = myY = 300;
			mySpeed = Math.random()*6;
			myAngle = Math.random()*2*Math.PI;	
		}
		if(myY < 0){
			myX = myY = 300;
			mySpeed = Math.random()*6;
			myAngle = Math.random()*2*Math.PI;
		}
		if(myY > 600){
			myX = myY = 300;
			mySpeed = Math.random()*6;
			myAngle = Math.random()*2*Math.PI;
		}

	}
	void show(){
		noStroke();
		fill(myColor);
 		ellipse((int)myX,(int)myY, 10,10);
	}
}


