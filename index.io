<!DOCTYPE html>
<html>
<head>
	<title>palindrome</title>
</head>
<body>
	<h1>Check for Palidrome</h1>
	<form>
		<input type="text" name="text" id="input" placeholder="enter palidrome">
	</form>
	<button id="button">enter</button>
	<p id="output"></p>

	<style type="text/css">
		*{
			margin: 0;
			padding: 0;
		}
		body{
			font-family: 'Roboto', sans-serif;
			background-image: linear-gradient(-90deg,#ce4343, rgb(218, 181, 75));
    		color: #fff;
		    display: flex;
		    flex-direction: column;
		    align-items: center;
		    padding: 30px 20px;
		}
		h1{
			font-size: 38px;
		}
		form{
			display: flex;
		    flex-direction: column;
		    align-items: center;
		    width: 100%;
		    margin-top: 30px;
		}
		input{
			width: 300px;
		    padding: 8px 20px;
		    border: 2px solid #fff;
		    border-radius: 10px;
		    background-color: #fff;
		    color: #222;
		    box-shadow:5px 5px 10px -3px rgba(117, 117, 117, .5);
		}
		input:focus-within{
			background-color: transparent;
			color: #fff;
		}
		input:focus,button:focus{
			outline: none;
		}
		button{
			padding: 8px 20px;
		    width: 100px;
		    margin-top: 15px;
		    border: 2px solid #fff;
		    background: transparent;
		    color: #fff;
		    font-size: 16px;
		    text-transform: uppercase;
		    transition: .6s ease-in-out;
		    box-shadow:none;
		    cursor: pointer;
		}
		button:hover{
			background: #fff;
			color: #ce4343;
			box-shadow:5px 5px 10px -3px rgba(117, 117, 117, .5)
		}
		p{
			font-size: 20px;
			margin-top: 30px;
		}
	</style>
	<script type="text/javascript">
	let input = document.getElementById('input');
	let output = document.getElementById('output')
	let button = document.getElementById('button');
	//remove umwated characters and convert to lowercase
	let palindrome = (myString) => {
		let removeUnwanted = myString.replace(/[^ A-Za-z0-9]/gi,"").toLowerCase();
		//split characters in to an array,reverse it and concat them into a string
		let checkForPalindrome = removeUnwanted.split('').reverse().join('');
		if (removeUnwanted === checkForPalindrome) {
			console.log(`${myString} is a palindrome`);
			output.innerHTML = `${myString} is a palindrome`;
		} else {
			console.log(`${myString} is not a palindrome`);
			output.innerHTML = `${myString} is not a palindrome`;
		}
	}
	button.addEventListener('click', () =>palindrome(input.value));
// /[^A-Za-z0-9]/gi or /[\W_]/gi---remove unwanted characters
//split() divides string into substrings puts it in an array
//reverse() reverses an array, the first becomes the last
//join() concats and array into a string usualy witha comma
//replace(/[^A-Za-z0-9]/gi, ''),simply replaces a character with what is after the comma

/*
-----Option 2
	const longestPali = (str) => {
		  let start, end;
		  for (let i = 0; i < str.length; i++) {
		    let elem = str[i];
		    start = str.indexOf(elem), end = str.lastIndexOf(elem);
		    let derived = str.slice(start, end + 1);
		    if (derived.split("").reverse().join("") === derived) {
		      console.log(derived) ;
		    } else {
		      console.log(longestPali(str.slice(i + 1))) ;
		    }
		  }
		};
		//longestPali('i am a boy of many colours')
*/
	</script>
</body>
</html>
