<%@page session="true"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%@taglib uri="http://www.springframework.org/tags" prefix="sp"%>
<aside><span class="c1"></span><div id="widgets" class="c2"><%
			/* including images */
		%><c:if test='${hasImages}'>
			<div id="images">
				<c:forEach items="${results.getImages() }" var="item">
					<a href="${item}" target="_new"><img src="${item}"></a>
				</c:forEach>
			</div></c:if><%
			/* including video */
		%><c:if test='${hasVideos}'><div id="video">
				<c:forEach items="${results.getVideos() }" var="item">
					 <c:if test="${item.contains('youtube') and item.contains('embed') }">
						<iframe width="242" height="136" src="${item}" frameborder="0" allowfullscreen></iframe>
					 </c:if>				 
				</c:forEach>
			</div></c:if><%
			/* including audio */
		%><c:if test='${hasAudios}'><div id="audio">
				<c:forEach items="${results.getAudios() }" var="item"   varStatus="position">
					<div class="audio sp">
						<div id="jquery_jplayer_${position.count }" class="cp-jplayer"></div>
						<div id="cp_container_${position.count }" class="cp-container">
							<div class="cp-buffer-holder">
								<div class="cp-buffer-1"></div>
								<div class="cp-buffer-2"></div>
							</div>
							<div class="cp-progress-holder">
								<div class="cp-progress-1"></div>
								<div class="cp-progress-2"></div>
							</div>
							<div class="cp-circle-control"></div>
							<ul class="cp-controls">
								<li><a href="#" class="cp-play" tabindex="1">play</a></li>
								<li><a href="#" class="cp-pause" style="display:none;" tabindex="1">pause</a></li>
							</ul>
						</div>
					</div>
					<script type="text/javascript">
						$(function(){var myCirclePlayer = new CirclePlayer("#jquery_jplayer_${position.count }",{mp3: "${item}"}, {supplied: "mp3",cssSelectorAncestor: "#cp_container_${position.count }"});});
					</script>					
				</c:forEach>
			</div></c:if><%
			/* drawing a map */
		%><c:if test='${hasMap}'><div id="resourceMapCnt">
				<map name="resourceMap" id="resourceMap" class="sp"></map>
			</div></c:if><%
			/* external resources link */
		%><c:if test='${hasFamilyTree}'><div id="familytree">
				<a href="#familytree" title="<sp:message code='widget.familytree' text='family tree' />"><span class="sp"><strong class="widgetTitle"><sp:message code='widget.familytree' text='family tree' /></strong></span></a>
			</div><div id="familytree-container"><div id="familytree-content">
		<div id="grampas">
			<div id="fgp">
				<h3>GRANDPARENTS</h3>
			</div>
			<div id="mgp">
				<h3>GRANDPARENTS</h3>
			</div>
		</div>
		<div id="parents">
			<h3>PARENTS</h3>
		</div>
		<div id="bros">
			<div id="mainr"></div>
			<div id="sibl">
				<h3>SIBLINGS</h3>
				<div class="pair"><div class="e"></div></div>
			</div>
		</div>
		<div id="sons">
			<h3>CHILDRENS</h3>
		</div>
		<div id="grandsons">
			<h3>GRANDCHILDRENS</h3>
		</div>
	</div></div></c:if><%
			/* external resources link */
		%><c:if test='${hasLod}'><div id="linking">
				<a href="#lodCloud" title="<sp:message code='widget.lodcloud' text='lodcloud' />"><span class="sp"><strong class="widgetTitle"><sp:message code='widget.lodcloud' text='lodcloud' /></strong></span></a>
			</div></c:if></div></aside>