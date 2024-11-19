package shade.Shape;

public class Trapezoid {
    private double upper;
    private double lower;
    private double height;

    public Trapezoid() {
    upper=0.0;
    lower=0.0;
    height=0.0;
    }

    public double getUpper() {
        return upper;
    }

    public double getLower() {
        return lower;
    }

    public double getHeight() {
        return height;
    }

    public void setUpper(double upper) {
        this.upper = upper;
    }

    public void setLower(double lower) {
        this.lower = lower;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getArea() {
    return (upper+lower)*(height/2);
    }
}
