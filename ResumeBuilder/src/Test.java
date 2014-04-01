class MyException extends Exception
{
	private static final long serialVersionUID = 1L;
	
	private int ex;
	
	MyException(int a)
	{
		ex = a;
	}
	
	public String toString()
	{
		return "MyException[" + ex + "] is less than zero";
	}
}

public class Test
{
	static void sum(int a, int b) throws MyException
	{
		if (a < 0)
		{
			throw new MyException(a);
		}
		else
		{
			System.out.println(a + b);
		}
	}
	
	public static void main(String[] args)
	{
		try
		{
			sum(-10, 10);
		}
		catch (MyException me)
		{
			System.out.println(me);
		}
	}
}