void setup () {
    size(300,300); 
    for (int i = 300; i>0; i-=30) {
        if (i % 60 == 0)
            fill(200,200,200);
        else
            fill(255,0,0);
        ellipse(150, 150, i, i);
    } 
}
