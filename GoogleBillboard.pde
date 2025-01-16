public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{   
  for(int i = 2; i<e.length()-10; i++){
    String digits = e.substring(i,i+10); 
    double num = Double.parseDouble(digits);
    if(isPrime(num)){
      System.out.println(digits);
      i = 10000;
    }
  }
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double num){
  if(num <= 1) {
    return false;
  }
  else if(num == 2) {
    return true;
  }
  else if(num % 2 == 0) {
    return false;
  }
  for(int i = 3; i <= Math.sqrt(num); i += 2) {
    if(num % i == 0) {
      return false;
    }
  }
  return true;
}
