@Entry
@Component
struct Index {
  build() {
    Column() {
      Text('第一页')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 50 })

      Button('跳转到第二页')
        .height(59)
        .width(300)
        .backgroundColor(Color.Blue)
    }
    .width('100%')

  }

}