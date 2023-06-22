void backgroundDraw() {
    background(#FFFFFF);
 if (random(1)<0.03) {
    currentColor=lerpColor(currentColor, targetColor, amount);
    targetColor=color(random(100,256), random(100,256), random(100,256));
    amount=0;
  }
  if (amount<1) {
    amount+=0.01;
  }
  background(lerpColor(currentColor, targetColor, amount));
}
