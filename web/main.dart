// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

InputElement task;
UListElement list;
UListElement cList;

void main() {
  task = querySelector('#task');
  list = querySelector('#list');
  cList = querySelector('#cList');

  task.onChange.listen(addTask);

}

void addTask(Event e){
  var newTask = new LIElement();
  newTask.text = task.value;
  newTask.onClick.listen((e) {
    if(newTask.style.textDecoration != "line-through"){
      newTask.style.textDecoration = "line-through";
    } else {
      newTask.style.textDecoration = "none";
    }
  });
  newTask.onDoubleClick.listen((e) => newTask.remove());
  task.value = "";
  list.children.add(newTask);
}