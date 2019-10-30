Particle[] bob;
void setup()
{
	background(0);
	size(600,600);
	bob = new Particle[500];   
	for(int i = 0; i < bob.length; i++){
		bob[i] = new Particle();
	}
	
}
void draw()
{
	background(0);
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
		myColor = color(23,24,56);
	}
	void move(){
		myX = myX + Math.cos(myAngle) * mySpeed;
		myY= myY + Math.sin(myAngle) * mySpeed;
		if(myX < 0){
			myX = myY = 300;
		}
		if(myX > 600){
			myX = myY = 300;
		}
		if(myY < 0){
			myX = myY = 300;
		}
		if(myY > 600){
			myX = myY = 300;
		}

	}
	void show(){
		noStroke();
 		ellipse((int)myX,(int)myY, 5,5);
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


