package linkedlist;

import collection.linkedlist1;

public class LinkedList {
	Node head;
	/*
	 structur ,constructor
	 add node
	 addnext node
	 delete
	 print
	 */
	
	//structure
	class Node{
		int data;
		Node next;
	
		
		Node(int d)
		{
			this.data=d;
			next=null;
		}
	}
		
		//add node 
		public void push(int newdata)
		{
			Node new_node=new Node(newdata);
			new_node.next=head;
			head=new_node;
		}
		
		//add next node
		public void nextnode(Node prev_node,int newdata)
		{
			if(prev_node==null)
			{
				System.out.println("prev node is null fill it");
				return;
			}
			Node new_node=new Node(newdata);
			
			new_node.next=prev_node.next;
			
			prev_node.next=new_node;
		}
		/*
		 
		void append(int newdata) {
			Node new_node=new Node(newdata);
			if(head==null) {
				head=new Node(newdata);
				return;
			}
			new_node.next=null;
			Node temp=head;
			while (temp!=null) {
				temp=temp.next;
				temp.next=new_node;
				
				return;	
			}
			
		}*/
		 void print()
		 {
			 Node pnode=head;
			 while (pnode!=null) {
				 System.out.println(pnode.data+" ");
				 pnode=pnode.next;
				
			}
		 }
		
	
	public static void main(String[] args) {
			LinkedList ll=new LinkedList();
			
			
			ll.push(89);
			ll.push(52);
	        ll.push(9066);
			
			ll.print();
			/*
			 * first this create a node by append then for next node we do push
			 */

	}

}
