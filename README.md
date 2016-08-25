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