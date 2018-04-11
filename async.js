
p = () => new Promise((resolve) => (setTimeout(() => resolve(10), 1000)));

test = async function(){
    let b = await p();
    return b 
}


test().then((b) => console.log(b));


