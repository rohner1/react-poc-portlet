<%@ include file="/init.jsp" %>

<p>
	<b><liferay-ui:message key="react_poc_portlet_ReactPoc.caption"/></b>
</p>

<h1>Basic Click Counter Example with JSX</h1>
<div id="container">
	<p>
		To install React, follow the instructions on
		<a href="https://github.com/facebook/react/">GitHub</a>.
	</p>
	<p>
		If you can see this, React is <strong>not</strong> working right.
		If you checked out the source from GitHub make sure to run <code>grunt</code>.
	</p>
</div>
<div id="container1">
	<p>
		To install React, follow the instructions on
		<a href="https://github.com/facebook/react/">GitHub</a>.
	</p>
	<p>
		If you can see this, React is <strong>not</strong> working right.
		If you checked out the source from GitHub make sure to run <code>grunt</code>.
	</p>
</div>
<h4>Example Details</h4>
<p>This is written with JSX and transformed in the browser.</p>
<p>This example uses events and state to track clicks and update the rendered output.</p>


<script data-senna-track="temporary" type="text/javascript">
	var defineAmdBackup = define.amd;
	define.amd = undefined;
</script>

<script data-senna-track="temporary" src="https://npmcdn.com/react@15.3.1/dist/react.js"></script>
<script data-senna-track="temporary" src="https://npmcdn.com/react-dom@15.3.1/dist/react-dom.js"></script>
<script data-senna-track="temporary" src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>

<%--<script data-senna-track="temporary" type="text/javascript" src="/o/react-poc/counter.es.js"></script>--%>

<script data-senna-track="temporary">
	"use strict";

	var Timer = React.createClass({
		displayName: "Timer",

		getInitialState: function getInitialState() {
			return { secondsElapsed: 0 };
		},
		tick: function tick() {
			this.setState({ secondsElapsed: this.state.secondsElapsed + 1 });
		},
		componentDidMount: function componentDidMount() {
			this.interval = setInterval(this.tick, 1000);
		},
		componentWillUnmount: function componentWillUnmount() {
			clearInterval(this.interval);
		},
		render: function render() {
			return React.createElement(
					"div",
					null,
					"Seconds Elapsed: ",
					this.state.secondsElapsed
			);
		}
	});

	ReactDOM.render(React.createElement(Timer, null), document.getElementById('container'));
	ReactDOM.render(React.createElement(Timer, null), document.getElementById('container1'));
</script>
<%--<script data-senna-track="temporary" type="text/babel">--%>
	<%--var Counter = React.createClass({--%>
		<%--getInitialState: function () {--%>
			<%--return { count: 0 };--%>
		<%--},--%>
		<%--handleClick: function () {--%>
			<%--this.setState({--%>
				<%--count: this.state.count + 1,--%>
			<%--});--%>
		<%--},--%>
		<%--render: function () {--%>
			<%--return (--%>
					<%--<button onClick={this.handleClick}>--%>
						<%--Click me! Number of clicks: {this.state.count}--%>
					<%--</button>--%>
			<%--);--%>
		<%--}--%>
	<%--});--%>
	<%--ReactDOM.render(--%>
			<%--<Counter />,--%>
			<%--document.getElementById('container')--%>
	<%--);--%>
<%--</script>--%>

<%--<script data-senna-track="temporary">--%>
	<%--ReactDOM.render(React.createElement(Counter, null), mountNode);--%>
<%--</script>--%>