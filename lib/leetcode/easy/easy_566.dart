///566. Reshape the Matrix
void main() {

}

List<List<int>> _myAnswer(List<List<int>> mat, int r, int c) {
  int m = mat.length , n = mat[0].length, total = m * n;
        if(r * c != total) return mat;
        List<List<int>> ans= List.generate(r, (i) => List.filled(c,0));
        for(int i = 0; i < total; i++) {
          ans[i ~/ c][i % c] = mat[i ~/ n][i % n];
        }
        return ans;
}
