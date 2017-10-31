<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1509440345885" ID="ID_1307117310" MODIFIED="1509440446266" TEXT="git">
<node CREATED="1509440450634" ID="ID_988995685" MODIFIED="1509440494013" POSITION="right" TEXT="Gihub contributions">
<node CREATED="1509440494014" ID="ID_815202604" MODIFIED="1509440623708" TEXT="After forking and cloning">
<node CREATED="1509440623709" ID="ID_321497151" MODIFIED="1509440779863" TEXT="To keep track of the original master">
<node CREATED="1509440684269" ID="ID_1253461869" MODIFIED="1509440737497" TEXT="git remote add upstream git@github.com:eggheadio-github/stack-overflow-copy-paste.git"/>
<node CREATED="1509440779864" ID="ID_1297249493" MODIFIED="1509440784901" TEXT="git fetch upstream">
<node CREATED="1509440784901" ID="ID_101192408" MODIFIED="1509440862365" TEXT="to let local repo get info about remote repo"/>
<node CREATED="1509440890945" ID="ID_1729270304" MODIFIED="1509440908736" TEXT="returns: * [new branch]   master   -&gt; upstream/master"/>
<node CREATED="1509440918821" ID="ID_1487325273" MODIFIED="1509440941667" TEXT="Right now our local copy of the master branch is pointing to our personal remote repository"/>
</node>
<node CREATED="1509441007282" ID="ID_269206606" MODIFIED="1509441023611" TEXT="git branch --set-upstream-to=upstream/master master">
<node CREATED="1509440971428" ID="ID_216863553" MODIFIED="1509441035628" TEXT="Our repository is called origin, we want our local copy of master to point upstream, so whenever we pull changes into master it will get the latest changes from the upstream repository."/>
<node CREATED="1509441076199" ID="ID_1140986031" MODIFIED="1509441078057" TEXT="Now our branch, called master, is tracking the upstream master. When there are updates we like to get from the upstream repository we can get them by simply pulling on that branch."/>
</node>
</node>
<node CREATED="1509442542138" ID="ID_939896522" MODIFIED="1509442552682" TEXT="Pushing local changes to do PR">
<node CREATED="1509442552684" ID="ID_1312389552" MODIFIED="1509442562322" TEXT="git push origin pr/padLeft">
<node CREATED="1509442571453" ID="ID_97319811" MODIFIED="1509442587585" TEXT="pushing to fork  repo branch"/>
</node>
<node CREATED="1509442674110" ID="ID_1937970770" MODIFIED="1509442714193" TEXT="git push --set-upstream origin pr/padLeft">
<node CREATED="1509442714194" ID="ID_1521217287" MODIFIED="1509442763566" TEXT="this sets that remote for that branch so that next time we can only type git push o"/>
<node CREATED="1509442763729" ID="ID_1331560509" MODIFIED="1509442777269" TEXT="--set-upstream can be replaced with -u"/>
</node>
</node>
</node>
</node>
<node CREATED="1509454650623" ID="ID_460108956" MODIFIED="1509454661712" POSITION="left" TEXT="checkout">
<node CREATED="1509454663095" ID="ID_99852144" MODIFIED="1509454675901" TEXT="replace the current files with what&apos;s in the repo">
<node CREATED="1509454675901" ID="ID_688997694" MODIFIED="1509454692475" TEXT="git checkout -f branchname"/>
</node>
</node>
<node CREATED="1509441140556" ID="ID_1415114383" MODIFIED="1509441143754" POSITION="left" TEXT="branches">
<node CREATED="1509441143755" ID="ID_401277636" MODIFIED="1509441151007" TEXT="create and go to a new branch">
<node CREATED="1509441151008" ID="ID_1947538204" MODIFIED="1509441168941" TEXT="git checkout -b pr/padleft">
<node CREATED="1509441198137" ID="ID_1993552269" MODIFIED="1509441204965" TEXT="pr is a prefix"/>
</node>
</node>
</node>
<node CREATED="1509442175850" ID="ID_1411776358" MODIFIED="1509442264865" POSITION="right" TEXT="Finding changes (before commit)">
<node CREATED="1509442264867" ID="ID_599383549" MODIFIED="1509442268008" TEXT="git status"/>
<node CREATED="1509442268385" ID="ID_1611743405" MODIFIED="1509442271025" TEXT="git diff"/>
</node>
<node CREATED="1509444643150" ID="ID_1290613744" MODIFIED="1509444647687" POSITION="left" TEXT="rebase">
<node CREATED="1509444648682" ID="ID_845635505" MODIFIED="1509444665212" TEXT="Use when we want to merge changes from master to our local branch">
<node CREATED="1509444665213" ID="ID_722049955" MODIFIED="1509444726664" TEXT="better than merge as it will keep git history a little nicer"/>
<node CREATED="1509445268802" ID="ID_724516929" MODIFIED="1509445321575" TEXT="We apply commits from master first and then our commits on top of that, even if commits from master happened after our local commits"/>
</node>
<node CREATED="1509445024095" ID="ID_1975738895" MODIFIED="1509445025976" TEXT="steps">
<node CREATED="1509445025977" ID="ID_44687609" MODIFIED="1509445045856" TEXT="1. fetch master to local">
<node CREATED="1509445045857" ID="ID_469897426" MODIFIED="1509445052695" TEXT="git fetch upstream"/>
</node>
<node CREATED="1509445362330" ID="ID_458130080" MODIFIED="1509445366866" TEXT="2. rebase">
<node CREATED="1509445366867" ID="ID_1226739306" MODIFIED="1509445376687" TEXT="git rebase upstream/master"/>
</node>
<node CREATED="1509445609413" ID="ID_701388938" MODIFIED="1509445616571" TEXT="3. in case of conflicts">
<node CREATED="1509445616572" ID="ID_737029453" MODIFIED="1509445623699" TEXT="fix conflict"/>
</node>
<node CREATED="1509445624598" ID="ID_1782201039" MODIFIED="1509446743281" TEXT="3.1 and then continue rebase">
<node CREATED="1509445633241" ID="ID_1385094060" MODIFIED="1509445640607" TEXT="git rebase --continue"/>
</node>
<node CREATED="1509445659877" ID="ID_1590417768" MODIFIED="1509446750102" TEXT="3.2 or abort if got into troubles">
<node CREATED="1509445669611" ID="ID_809250063" MODIFIED="1509445684486" TEXT="git rebase --abort"/>
</node>
<node CREATED="1509445721284" ID="ID_223154618" MODIFIED="1509446022273" TEXT="4. push changes to remote (branch)">
<node CREATED="1509445744719" ID="ID_899851307" MODIFIED="1509445879460" TEXT="This operation changes git history so if we try git push we will find that git will reject it"/>
<node CREATED="1509445758861" ID="ID_797266284" MODIFIED="1509445898594" TEXT="git push -f"/>
<node CREATED="1509446022770" ID="ID_1231960698" MODIFIED="1509446051334" TEXT="This is distructive operation, check with git log that everything is ok to avoid loosing changes in your branch"/>
</node>
</node>
</node>
<node CREATED="1509446345881" ID="ID_232891363" MODIFIED="1509446354997" POSITION="left" TEXT="squash commits">
<node CREATED="1509446358300" ID="ID_1885480831" MODIFIED="1509446379614" TEXT="Handy with pull requests to avoid clutter with too many commits"/>
<node CREATED="1509446419396" ID="ID_1881676457" MODIFIED="1509446913324" TEXT="steps">
<node CREATED="1509446421926" ID="ID_38272135" MODIFIED="1509446470742" TEXT="1. Provide the parent commit for the oldest commit we want to squash">
<node CREATED="1509446518427" ID="ID_1868805772" MODIFIED="1509446537850" TEXT="Use git log to find the sha of the oldest commit&apos;s parent"/>
</node>
<node CREATED="1509446555857" ID="ID_1526208132" MODIFIED="1509446564767" TEXT="2. Start interactive rebase session">
<node CREATED="1509446564768" ID="ID_942511131" MODIFIED="1509446588753" TEXT="git rebase -i sha_of_parent_commit"/>
</node>
<node CREATED="1509446632168" ID="ID_790682654" MODIFIED="1509446645044" TEXT="3. define commands for each commit">
<node CREATED="1509446645045" ID="ID_1033560237" MODIFIED="1509446655774" TEXT="commits are listed from top to bottom">
<node CREATED="1509446655774" ID="ID_1243291005" MODIFIED="1509446668996" TEXT="skipping a line removes a commit from rebase"/>
</node>
</node>
<node CREATED="1509446712999" ID="ID_752859008" MODIFIED="1509446723228" TEXT="3.1 we actually want to merge two commits">
<node CREATED="1509446758186" ID="ID_971550786" MODIFIED="1509446768123" TEXT="top command will be &quot;pick&quot;"/>
<node CREATED="1509446768457" ID="ID_1503224380" MODIFIED="1509446780214" TEXT="bottom command should be &quot;squash&quot;"/>
</node>
<node CREATED="1509446812218" ID="ID_644570669" MODIFIED="1509446857843" TEXT="4. When git finishes processing it will ask for a new message "/>
<node CREATED="1509446885022" ID="ID_29277881" MODIFIED="1509446903311" TEXT="5. with git log check that multiple commits are replaced with a single one"/>
<node CREATED="1509446913798" ID="ID_1287847017" MODIFIED="1509446935262" TEXT="6. force push (as with *rebase above)"/>
</node>
</node>
<node CREATED="1509442463123" ID="ID_1061107900" MODIFIED="1509442467097" POSITION="left" TEXT="githooks">
<node CREATED="1509442467098" ID="ID_334484885" MODIFIED="1509442484286" TEXT="skipping githooks with any command">
<node CREATED="1509442484287" ID="ID_1714940859" MODIFIED="1509442494216" TEXT="--no-verify"/>
</node>
</node>
<node CREATED="1509444556031" ID="ID_1738359421" MODIFIED="1509444558336" POSITION="right" TEXT="links">
<node CREATED="1509444558337" ID="ID_1985484785" MODIFIED="1509444571592" TEXT="contributing to open source on gh">
<node CREATED="1509444571593" ID="ID_1528360823" MODIFIED="1509444574370" TEXT="https://egghead.io/lessons/javascript-how-to-update-a-pull-request-on-github">
<node CREATED="1509449748857" ID="ID_1099526054" MODIFIED="1509449750556" TEXT="https://github.com/eggheadio-github/stack-overflow-copy-paste"/>
</node>
</node>
</node>
</node>
</map>
