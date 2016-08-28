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