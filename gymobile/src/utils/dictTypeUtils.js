


export function dictTypeUtils(type){
  var str1 = type.match(/(\S*)-/)[1];
  var str2 = type.match(/-(\S*)/)[1];
  var typeName;

  if(str1==1){
    if (str2==1){
      return typeName='物业维修-家电'
    }else if(str==2){
      return typeName='物业维修-腻子'
    }
  }
}
