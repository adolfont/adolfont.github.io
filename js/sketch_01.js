const ripples = [];
  
      function setup() {
        createCanvas(windowWidth, 800);
        stroke(255);
        noFill();
        for (let i = 0; i < 10; i++) {
          ripples.push(new Ripple(random(width), random(height)));
        }
      }
      
      function draw() {
        background(0);
        for (let i = 0; i < ripples.length; i++) {
          ripples[i].update();
          ripples[i].display();
        }
      }
      
      class Ripple {
        constructor(x, y) {
          this.pos = createVector(x, y);
          this.r = 50;
          this.maxR = 500;
        }
      
        update() {
          this.r += noise(frameCount / 100, this.pos.y / 100) * 5;
          if (this.r > this.maxR) {
            this.r = 0;
            this.pos.x = random(width);
            this.pos.y = random(height);
          }
        }
      
        display() {
          ellipse(this.pos.x, this.pos.y, this.r, this.r / 2);
        }
      }
