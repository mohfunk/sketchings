var sketch = (p: p5) => {

    p.preload = () => {
    }
    p.setup = () => {
        p.createCanvas(p.windowWidth, p.windowHeight);
        p.pixelDensity(10);
        p.createCanvas(p.windowWidth, p.windowHeight, p.WEBGL);
        p.background(0);
    }
    p.draw = () => {
        p.background(0, 0);
        p.push();
        p.noStroke();
        p.normalMaterial();
        p.rotateZ(p.frameCount * 0.001);
        p.rotateX(p.frameCount * 0.01);
        p.rotateY(p.frameCount * 0.01);
        p.box(80, 30 + p.abs((10 * p.sin(p.frameCount * 0.02))));
        p.pop();
    }
    p.windowResized = () => {
        p.resizeCanvas(p.windowWidth, p.windowHeight);
    }
    p.keyPressed = () => {
    }

}
var sketchP = new p5(sketch);
