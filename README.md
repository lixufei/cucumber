feature/特性
场景
步骤
Gherkin
步骤定义：将Gherkin跟应用连接起来,步骤定义文件里面只需要步骤即可，不需要被包在类或module里面

`step1: bundle install --save

`到calculator目录下
    run 'cucumber'

`cucumber约定的目录结构
    features/
      adding.feature
      ...
      step_definitions/
        step_definitions.rb

` (?:visit | go to )
    非捕获类型，不会将值作为参数传递

`cucumbers?  单复数

`解决运行慢的问题
    用标签或者文件夹的方式让测试并行运行
    用文件夹run 'cucumber features/reports/adding.feature -r features'
    显性地告诉cucumber从features根目录加载步骤定义

    用标签run 'cucumber --tags @division'

`Gherkin 是命令式语言（如Ruby），采用声明式风格（CSS）

`胖客户端 VS 瘦客户端（web应用）

`编写实例时：
      DAMP(Descriptive and Meaningful Phrase，描述性且有意义的叙述)原则高于
    DRY（Don't Repeat Yourself）
`测试数据构造器：
    Ruby中有FactoryGirl（Test Data Builder）
`固件数据是一种反模式：当数据庞大，准备数据变慢，编写渗漏场景，难以清除失败的关联，更倾向于测试数据构造器。

`设计系统的方法：Alistair Cockburn的端口和适配器架构

`变形器要写到最前面，因为后面的步骤定义中要用到

`在World中存储状态，自定义辅助方法