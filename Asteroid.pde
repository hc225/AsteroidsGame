class Asteroid extends Floater
{
	private int rotationSpeed;
	public Asteroid()
	{

	}
	public void move()
	{
		turn(rotationSpeed);
		super.move();
	}
}