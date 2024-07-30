void initBug() {
for (int i = 0; i < bug.length; i++) {
    String filename = "bug" + i + ".png";
    bug[i] = loadImage(filename);
}
}
