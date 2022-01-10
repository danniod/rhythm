<#--

    Rhythm - A modern community (forum/BBS/SNS/blog) platform written in Java.
    Modified version from Symphony, Thanks Symphony :)
    Copyright (C) 2012-present, b3log.org

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<div class="footer">
    <div class="wrapper">
        <div class="slogan">
            摸鱼派 - 鱼油专属摸鱼社区<br>
        </div>
        <div class="fn-flex-1">
            <div class="footer-nav fn-clear ft-smaller">
                友情链接&nbsp;
                <a style="margin-right: 0px; padding-right: 0px" target="_blank" href="https://www.cxy521.com/">程序员导航</a>
                &nbsp;｜&nbsp;
                <a style="margin-right: 0px; padding-right: 0px" target="_blank" href="https://www.lundao.pub">「论道」社区</a>
            </div>
            <div class="fn-clear ft-smaller">
                <div style="margin-top: 5px">探索</div>
                <div>
                    <a href="https://github.com/csfwff/rhythm" target="_blank">Rhythm 社区引擎</a>
                    &nbsp;|&nbsp;
                    <a href="javascript:void(0)">摸鱼派聊天室客户端</a>&nbsp;&nbsp;
                    <span>
                        <a href="https://fishpi.cn/article/1637143985245" target="_blank" title="PC 客户端"><svg style="vertical-align: -2px;"><use xlink:href="#ic-pc"></use></svg></a>&nbsp;
                        <a href="https://fishpi.cn/article/1638189205758" target="_blank" title="IntelliJ IDEA插件"><svg style="vertical-align: -2px;"><use xlink:href="#ic-idea"></use></svg></a>&nbsp;
                        <a href="https://fishpi.cn/article/1639648815789" target="_blank" title="Chrome 插件"><svg style="vertical-align: -2px;"><use xlink:href="#ic-chrome"></use></svg></a>&nbsp;
                        <a href="https://fishpi.cn/article/1641291342622" target="_blank" title="安卓 APK 应用"><svg style="vertical-align: -2px;"><use xlink:href="#ic-apk"></use></svg></a>&nbsp;
                        <a href="https://zhuanlan.zhihu.com/p/445372463" target="_blank" title="VSCode 插件"><svg style="vertical-align: -2px;"><use xlink:href="#ic-vscode"></use></svg></a>&nbsp;
                        <a href="https://fishpi.cn/article/1641135630423" target="_blank" title="Python 客户端"><svg style="vertical-align: -2px;"><use xlink:href="#ic-python"></use></svg></a>
                    </span>
                </div>
            </div>
            <div class="footer-nav fn-clear" style="margin-top: 15px; margin-bottom: 15px">
                <a rel="help" href="${servePath}/article/1630569106133">${aboutLabel}</a>
                <a href="${servePath}/tag/announcement">${symAnnouncementLabel}</a>
                <a href="${servePath}/domains">${domainLabel}</a>
                <a href="${servePath}/tags">${tagLabel}</a>
                <a href="${servePath}/statistic">${dataStatLabel}</a>
                <a href="${servePath}/article/1636516552191">开放 API</a>
                <div class="ft-smaller">
                    Copyright © 2021 - 2022 W&P Tech. All Rights Reserved. 北京白与画科技有限公司 版权所有
                    <div class="ft-smaller fn-right">
                        <a href="https://beian.miit.gov.cn/" target="_blank">京ICP备2022000226号-1</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${staticServePath}/js/symbol-defs${miniPostfix}.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/js/lib/compress/libs.min.js?${staticResourceVersion}"></script>
<script src="https://unpkg.zhimg.com/vditor@3.8.10/dist/index.min.js"></script>
<script src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}"></script>
<script>
    var Label = {
        commentEditorPlaceholderLabel: '${commentEditorPlaceholderLabel}',
        langLabel: '${langLabel}',
        luteAvailable: ${luteAvailable?c},
        reportSuccLabel: '${reportSuccLabel}',
        breezemoonLabel: '${breezemoonLabel}',
        confirmRemoveLabel: "${confirmRemoveLabel}",
        reloginLabel: "${reloginLabel}",
        invalidPasswordLabel: "${invalidPasswordLabel}",
        loginNameErrorLabel: "${loginNameErrorLabel}",
        followLabel: "${followLabel}",
        unfollowLabel: "${unfollowLabel}",
        symphonyLabel: "${symphonyLabel}",
        visionLabel: "${visionLabel}",
        cmtLabel: "${cmtLabel}",
        collectLabel: "${collectLabel}",
        uncollectLabel: "${uncollectLabel}",
        desktopNotificationTemplateLabel: "${desktopNotificationTemplateLabel}",
        servePath: "${servePath}",
        staticServePath: "${staticServePath}",
        isLoggedIn: ${isLoggedIn?c},
        funNeedLoginLabel: '${funNeedLoginLabel}',
        notificationCommentedLabel: '${notificationCommentedLabel}',
        notificationReplyLabel: '${notificationReplyLabel}',
        notificationAtLabel: '${notificationAtLabel}',
        notificationFollowingLabel: '${notificationFollowingLabel}',
        pointLabel: '${pointLabel}',
        sameCityLabel: '${sameCityLabel}',
        systemLabel: '${systemLabel}',
        newFollowerLabel: '${newFollowerLabel}',
        makeAsReadLabel: '${makeAsReadLabel}',
        imgMaxSize: ${imgMaxSize?c},
        fileMaxSize: ${fileMaxSize?c},
        <#if isLoggedIn>
            currentUserName: '${currentUser.userName}',
        </#if>
        <#if csrfToken??>
            csrfToken: '${csrfToken}'
        </#if>
    }

    <#if isLoggedIn>
    Label.userKeyboardShortcutsStatus = '${currentUser.userKeyboardShortcutsStatus}'
    </#if>

    Util.init(${isLoggedIn?c})

    <#if isLoggedIn>
    // Init [User] channel
    Util.initUserChannel("${wsScheme}://${serverHost}:${serverPort}${contextPath}/user-channel")
    </#if>

    <#if mouseEffects>
    Util.mouseClickEffects()
    </#if>
</script>
<#if algoliaEnabled>
<script src="${staticServePath}/js/lib/algolia/algolia.min.js"></script>
<script>
    Util.initSearch('${algoliaAppId}', '${algoliaSearchKey}', '${algoliaIndex}')
</script>
</#if>
<script src="${staticServePath}/js/lib/tooltips/tooltips.min.js?${staticResourceVersion}"></script>
<script>
    !function(p){"use strict";!function(t){var s=window,e=document,i=p,c="".concat("https:"===e.location.protocol?"https://":"http://","sdk.51.la/js-sdk-pro.min.js"),n=e.createElement("script"),r=e.getElementsByTagName("script")[0];n.type="text/javascript",n.setAttribute("charset","UTF-8"),n.async=!0,n.src=c,n.id="LA_COLLECT",i.d=n;var o=function(){s.LA.ids.push(i)};s.LA?s.LA.ids&&o():(s.LA=p,s.LA.ids=[],o()),r.parentNode.insertBefore(n,r)}()}({id:"JRkLwpTk0DlpkOHh",ck:"JRkLwpTk0DlpkOHh"});
</script>
