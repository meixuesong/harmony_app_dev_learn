import { Backlog, BacklogView } from './Backlog'


@Entry
@Component
struct Index {
  @State backlogs: Backlog[] = [
    new Backlog("读书", false),
    new Backlog("修5个bug", false),
    new Backlog("写代码", true),
    new Backlog("玩游戏", false)
  ];

  build() {
    Column({ space: 2 }) {
      Text("待办")
        .fontSize(30)
        .width('100%')
        .padding(12)
      ForEach(this.backlogs, (item: Backlog) => {
        BacklogView({ model: item })
      }, (item: Backlog, index: number) => item.title)
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#eee")
  }
}

@Preview
@Component
struct HomePreview {
  build() {
    Index()
  }
}