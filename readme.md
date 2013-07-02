项目来源
==============

火车上无聊读了三国杀的lua extension文档,加上毕业季王亚杰等人的三国杀灵感,决定为0904201各位写一个拓展包.
技能就来自于班级同学4年来有过的各个梗,比如姚明的激将,成昊同学的黑颜等.

项目安排
=============

1. 调试成功拓展包.
2. 实现部分同学拓展.
3. 发动班级讨论各个同学技能.
4. 完全实现.
5. 发布.

常用接口
=============

1. sgs.General

  此接口用来创建武将,由太阳神三国杀源码得知General的构造函数为

```cpp
General(Package *package, const QString &name, const QString &kingdom, int max_hp=4, bool male=true, bool hidden=false, bool never_shown=false)
```
