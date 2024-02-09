import 'dart:io';

void main() {
  working w1 = working();
  w1.myfunc();
}

class working {
  void myfunc() {
    print("Enter E for enter data");
    print("Enter D for Delete data");
    print("Enter V for view data");
    print("Enter  Q for end the list");

    print("");

    String? num1 = stdin.readLineSync();

    String? todo;

    if (num1 == "E") {
      LinkedList L1 = LinkedList();
      while (true) {
        print("Enter your task ");
        print("Enter  Q for end the list");
        print("");

        todo = stdin.readLineSync();
        print("");

        if (todo == "Q") {
          break;
        }
        todo ??= "";
        L1.insert(todo);
      }
      L1.printlist();
    }
  }
}

class Node {
  String todo;
  Node? next;

  Node(this.todo) {
    next = null;
  }
}

class LinkedList {
  Node? head;
  int count = 0;

  LinkedList() {
    this.head = head;
  }

  void insert(String todo) {
    Node n1 = Node(todo);

    if (head == null) {
      head = n1;
      return;
    }
    Node? temp = head;

    while (temp?.next != null) {
      temp = temp?.next;
    }
    temp?.next = n1;
    count++;
  }

  void printlist() {
    Node? prin = head;

    if (prin == null) {
      print("Error");
    }

    while (prin != null) {
      String? pp = prin.todo;
      print("" + pp);
      prin = prin.next;
    }
  }
}
