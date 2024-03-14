@Entry
@Component
struct Index {
  build() {
    Row() {
      Column() {
        Text('跳转到第二页')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.White)
        Button('跳转到第一页')


      }
      .width('100%')
    }
    .height('100%')
  }
}