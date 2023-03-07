void main(List<String> args) {
  calculation sum = calculation();
  
  sum.calc([15,5],'/');
}

class calculation {

  void calc(List<double>? getList,String? getType) {

      if (getType == null) {
        getType = "+";
      }
        double result = 0;
      switch (getType) {
        case '+':
          for(var item in getList == null ? getList = [0]: getList) {
            result = result + item;
          }
          print(result);
          break;
        case '-':
          for(var item in getList == null ? getList = [0]: getList) {
            result = result - item;
          }
          print(result);
          break;
        case '*':
          for(var item in getList == null ? getList = [0]: getList) {
            result = result * item;
          }
          print(result);
          break;
        case '/':
          for(int i = 0; i < getList!.length;) {
            result = getList[i];
            result = result / getList[i++];
          }
          print(result);
          break;
        
        default:
      }
    }

    
  
}