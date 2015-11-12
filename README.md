# question1
Write a method that answers the following problem:

Accept as input:

·       list: a singly-linked list

Remove the middle element of the list without iterating the list more than once.  Assume the list size cannot be known until traversed.

Support your answer with tests.

I assumed some additional requirements while coding this.  They are as follows:

1.  Nil should be returned if the list is nil.
2.  Nil should be returned if the list's head is not a valid node.
3.  When the list contains only one element, it is not removed.
4.  If the list contains an even number of elements, no element is removed.
5.  The method that removes the middle element from the list returns the updated list.
