<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1508441258413" ID="ID_681257263" MODIFIED="1508441468575" TEXT="JS Project">
<node CREATED="1508441364048" ID="ID_1789174684" MODIFIED="1508441383525" POSITION="right" TEXT="Text files">
<node CREATED="1508441417319" ID="ID_548654128" MODIFIED="1508441422448" TEXT="License"/>
<node CREATED="1508441423534" ID="ID_413675911" MODIFIED="1508441429124" TEXT="Code of conduct"/>
<node CREATED="1508441430238" ID="ID_522541417" MODIFIED="1508441433571" TEXT="Readme"/>
</node>
<node CREATED="1508441469746" ID="ID_378442697" MODIFIED="1508441475862" POSITION="left" TEXT="NPM">
<node CREATED="1508445656055" ID="ID_1372719283" MODIFIED="1508445834618" TEXT="NPM allows library users to configure dependecies (that support that) to put their settings to the config property. This means that the settings shouldn&apos;t be in the root of the package.json. This way if NPM decides to put a property with the same name as the name of the library, there won&apos;t be any conflict.">
<node CREATED="1508445847471" ID="ID_996446834" MODIFIED="1508445896369" TEXT="&quot;config&quot;: {&#xa;   &quot;yourlib&quot;: {}&#xa;}"/>
</node>
</node>
<node CREATED="1508441480456" ID="ID_1759992579" MODIFIED="1508441486801" POSITION="right" TEXT="ESLint"/>
<node CREATED="1508441488887" ID="ID_575130199" MODIFIED="1508441689332" POSITION="left" TEXT="Tests">
<node CREATED="1508441689333" ID="ID_652506921" MODIFIED="1508441695636" TEXT="Test Runners">
<node CREATED="1508441495016" ID="ID_687243647" MODIFIED="1508441497755" TEXT="Mocha"/>
</node>
<node CREATED="1508441696873" ID="ID_33736853" MODIFIED="1508441700047" TEXT="Assertions">
<node CREATED="1508441498865" ID="ID_229207052" MODIFIED="1508441710605" TEXT="Chai"/>
</node>
<node CREATED="1508441739808" ID="ID_1655046524" MODIFIED="1508441744994" TEXT="Code coverage">
<node CREATED="1508441744995" ID="ID_1034413683" MODIFIED="1508443480359" TEXT="NYC">
<node CREATED="1508441992068" ID="ID_1269475536" MODIFIED="1508441999741" TEXT="Consist of 4 metrics">
<node CREATED="1508441999742" ID="ID_675664093" MODIFIED="1508442005654" TEXT="Lines"/>
<node CREATED="1508442006090" ID="ID_1569409222" MODIFIED="1508442009342" TEXT="Branches"/>
<node CREATED="1508442009753" ID="ID_1113020642" MODIFIED="1508442013768" TEXT="Functions"/>
<node CREATED="1508442014190" ID="ID_493187841" MODIFIED="1508442071710" TEXT="Statements"/>
</node>
<node CREATED="1508442236989" ID="ID_878294486" MODIFIED="1508442475127" TEXT="Uses instrumentation">
<node CREATED="1508442250523" ID="ID_1988114919" MODIFIED="1508442415676" TEXT="Creates global object __coverage__ and it&apos;s properties have values that represent how many times a certain line or something was run"/>
<node CREATED="1508442547232" ID="ID_902615605" MODIFIED="1508442900047" TEXT="This statements will be placed before every of the metrics in the code and they will be incremented every time that metric is run">
<node CREATED="1508442646412" ID="ID_1070106719" MODIFIED="1508442652409" TEXT="functions">
<node CREATED="1508442652410" ID="ID_254199912" MODIFIED="1508442715853" TEXT="function function_name() {&#xa;   __coverage__[&apos;abcdef&apos;++]&#xa;}"/>
<node CREATED="1508443086121" ID="ID_1864822871" MODIFIED="1508443232281" TEXT="// es6 default parameters&#xa;function function_name(foo = (__coverage__[&apos;dfad&apos;]++, &apos;hi&apos;)) {&#xa;   __coverage__[&apos;abcdef&apos;]++&#xa;}"/>
<node CREATED="1508443131872" ID="ID_473611177" MODIFIED="1508443221841" TEXT="function function_name() {&#xa;   __coverage__[&apos;abcdef&apos;]++&#xa;}"/>
</node>
<node CREATED="1508442722037" ID="ID_76065212" MODIFIED="1508442737251" TEXT="statements">
<node CREATED="1508442737252" ID="ID_1419629057" MODIFIED="1508442787348" TEXT="if (true) {&#xa;   __coverage__[&apos;abcd&apos;]++&#xa;} else {&#xa;   __coverage__[&apos;abcdd&apos;]++&#xa;}"/>
<node CREATED="1508442989720" ID="ID_541473159" MODIFIED="1508443043729" TEXT="const v = b ? (__coverage__[&apos;def&apos;]++, &apos;hi&apos;) : &apos;yo&apos;"/>
</node>
<node CREATED="1508442829560" ID="ID_776683608" MODIFIED="1508442845167" TEXT="lines">
<node CREATED="1508442475127" ID="ID_786201255" MODIFIED="1508442848107" TEXT="__coverage__[&apos;adfafad]&apos;++"/>
</node>
</node>
<node CREATED="1508443290530" ID="ID_293316617" MODIFIED="1508443390604" TEXT="Instrumenter will run report out of that and  indicate which parts of code weren&apos;t called / are not called in the tests">
<node CREATED="1508443826234" ID="ID_759659024" MODIFIED="1508445472359" TEXT="File          % Stmts    % Branch    % Funcs    %Lines    Uncovered Lines&#xa;-------------------------------------------------------&#xa;index.js    75           100           0              75         13"/>
</node>
</node>
<node CREATED="1508443483215" ID="ID_9852039" MODIFIED="1508447393021" TEXT="Configuration">
<node CREATED="1508443493519" ID="ID_1539061543" MODIFIED="1508443497793" TEXT="package.json">
<node CREATED="1508443497794" ID="ID_1994740533" MODIFIED="1508443537282" TEXT="devDependencies">
<node CREATED="1508443537283" ID="ID_1786364878" MODIFIED="1508443538987" TEXT="&quot;nyc&quot;:&quot;7.1.0&quot;"/>
</node>
<node CREATED="1508443573442" ID="ID_1650168441" MODIFIED="1508443576074" TEXT="scripts">
<node CREATED="1508443576076" ID="ID_550291670" MODIFIED="1508443611829" TEXT="&quot;test&quot;: &quot;nyc mocha&quot;"/>
</node>
</node>
<node CREATED="1508445508487" ID="ID_962307011" MODIFIED="1508445545041" TEXT="Unfortunately there is no .nycrc file, all conf is done by using params"/>
<node CREATED="1508445589070" ID="ID_333488" MODIFIED="1508445604077" TEXT="nyc property in the root of the package.json">
<node CREATED="1508446101245" ID="ID_368375876" MODIFIED="1508446121420" TEXT="&quot;nyc&quot;: {}"/>
<node CREATED="1508446125124" ID="ID_1507568974" MODIFIED="1508446136242" TEXT="&quot;check-coverage&quot;: true">
<node CREATED="1508446208736" ID="ID_615223231" MODIFIED="1508446275796" TEXT="When running tests is done and coverage is checked, it will verify that the coverage matches a certain threshold"/>
</node>
<node CREATED="1508446570588" ID="ID_334186886" MODIFIED="1508446641869" TEXT="&quot;branches&quot;: 100,&#xa;&quot;functions&quot;: 100,&#xa;&quot;lines&quot;: 100,&#xa;&quot;statements&quot;: 100">
<node CREATED="1508446646081" ID="ID_539768327" MODIFIED="1508446653803" TEXT="Threshold settings"/>
</node>
<node CREATED="1508447109987" ID="ID_51892035" MODIFIED="1508447123536" TEXT="&quot;reporter&quot;: []">
<node CREATED="1508447123538" ID="ID_744697554" MODIFIED="1508447128495" TEXT="&quot;text&quot;">
<node CREATED="1508447128496" ID="ID_1718907781" MODIFIED="1508447145858" TEXT="Generates text report (stdout)"/>
</node>
<node CREATED="1508447146541" ID="ID_1494436326" MODIFIED="1508447151712" TEXT="&quot;lcov&quot;">
<node CREATED="1508447151713" ID="ID_901674993" MODIFIED="1508447219216" TEXT="html in the /coverage/lcov-report dir">
<node CREATED="1508447263027" ID="ID_739523893" MODIFIED="1508447289921" TEXT="Report will allow clicking on every file to see which lines aren&apos;t covered"/>
<node CREATED="1508447312717" ID="ID_1194240988" MODIFIED="1508447329669" TEXT="We will also see how many times each line in the source code was run"/>
</node>
</node>
</node>
<node CREATED="1508448725579" ID="ID_1975627797" MODIFIED="1508448735100" TEXT="&quot;include&quot;: []">
<node CREATED="1508448735101" ID="ID_65892464" MODIFIED="1508448739574" TEXT="&quot;src&quot;">
<node CREATED="1508448739575" ID="ID_1288401087" MODIFIED="1508448783259" TEXT="Will only instrument files in the src/ directory">
<node CREATED="1508448830286" ID="ID_487988967" MODIFIED="1508448984512" TEXT="NYC is smart enough to not include files in any /test folders or files that are file.test.js or __test__ (we don&apos;t want to instrument tests themselves)!"/>
</node>
</node>
</node>
</node>
<node CREATED="1508447394089" ID="ID_1268287163" MODIFIED="1508447416631" TEXT="Doesn&apos;t work correctly in the watch mode because it counts lines until the process exits"/>
</node>
<node CREATED="1508447776425" ID="ID_1678211678" MODIFIED="1508447831430" TEXT="NYC and Istanbul merged, NYC is the official cli for Istanbul and instanbul is used to instrument the code"/>
<node CREATED="1508448648392" ID="ID_1300758092" MODIFIED="1508448656737" TEXT=".gitignore">
<node CREATED="1508448656738" ID="ID_250318333" MODIFIED="1508448690130" TEXT=".nyc_output/"/>
<node CREATED="1508448672947" ID="ID_1499811685" MODIFIED="1508448684117" TEXT="coverage/"/>
</node>
</node>
</node>
</node>
</node>
</map>
