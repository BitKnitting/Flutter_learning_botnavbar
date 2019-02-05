# flutter_learning_botnavbar

This project evolves my understanding and code for bottom navbar navigation w/in the FitHome (or any I guess) Flutter UI experience.

FitHome has four bottom navigation items. 
   
![FitHome Dashboard](https://github.com/BitKnitting/Flutter_learning_botnavbar/blob/master/doc_images/FitHome_dashboard.png)

(note: the icons are placeholders for now)  
## Gotcha 
In this exploration, we have four tabs.  The BottomNavigationBar widget default type is shifted.  After 3, the text and icons become transparent.  This is SO NOT OBVIOUS....
To fix this explicitly set the BottomNavigationBar's type:
```
bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
```          