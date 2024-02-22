public double fractionLength = .8; 
public int smallestBranch = 10; 
public double branchAngle = .3;  

public void setup() 
{   
	background(60,110,120);
	size(1000,700);    
	noLoop(); 
} 
public void draw() 
{      
	stroke(150,180,180);
	strokeWeight(5);   
	line(500,700,500,600); 
	line(250,700,250,650);  
	line(750,700,750,650);    
	drawBranches(500,600,100,3*Math.PI/2);  
	drawBranches(250,650,70,3*Math.PI/2);
	drawBranches(750,650,70,3*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;   
	branchLength= branchLength-10;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	line(endX1, endY1, x, y);
	line(endX2, endY2, x, y);
	if(branchLength > smallestBranch){
		drawBranches(endX1,endY1,branchLength,angle1);
		drawBranches(endX2,endY2,branchLength,angle2);
	}
} ///
