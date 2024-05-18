@Entry
@Component
struct Target {
  @State message: string = '工作目标'

  build() {
    Column({ space: 20 }) {
      Text(this.message)
        .fontSize(40)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)

      Column({ space: 10 }) {
        Row({ space: 10 }) {
          Image($rawfile('homony-app2-logo.jpg'))
            .objectFit(ImageFit.Fill)
            .width(420 / 5)
            .height(596 / 6)

          Column() {
            Text('第一季度运营目标')
              .fontSize(20)
              .fontWeight(FontWeight.Bold)

            Text('实现用户量与用户活跃度提升')
              .fontColor(Color.Gray)
              .fontSize(16)
          }
          .alignItems(HorizontalAlign.Start)
        }
        .width('100%')
        .alignItems(VerticalAlign.Top)

        Row() {
          Column() {
            Text('整体进度')
              .fontSize(20)
              .fontWeight(FontWeight.Bold)
            Text('更新时间')
              .fontColor(Color.Gray)
              .fontSize(16)
            Text('2024-05-18 18:00:00')
              .fontSize(16)
          }
          .alignItems(HorizontalAlign.Start)

          Row() {
            Text('0')
              .fontColor(Color.Green)
            Text('/')
            Text('0')
          }
          .justifyContent(FlexAlign.Center)
          .width(80)
          .height(80)
          .borderStyle(BorderStyle.Solid)
          .borderRadius(80)
          .borderWidth(10)
          .borderColor('#eee')
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .backgroundColor(Color.White)
      .alignItems(HorizontalAlign.Start)
      .justifyContent(FlexAlign.Start)
      .padding(10)
      .borderRadius(10)

      Text('子目标')
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)

      Row() {
        Text('子目标2')

        Column() {
          Text('0%')
          Text('更新时间: 2020-01-01')
            .fontColor(Color.Gray)
        }
        .alignItems(HorizontalAlign.End)
      }
      .width('100%')
      .backgroundColor(Color.White)
      // .alignItems(HorizontalAlign.Start)
      .justifyContent(FlexAlign.SpaceBetween)
      .padding(10)
      .borderRadius(10)
    }
    .width('100%')
    .height('100%')
    .padding(10)
    .backgroundColor('#eee')
  }
}