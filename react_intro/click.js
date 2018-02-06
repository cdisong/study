import React from 'react'; 

class ClickCounter extends React.Component { 
    constructor() { 
        super(); 
        this.state = { count: 0 }; 
    }
    render() { 
        return ( 
            <div> 
                <button>CLICKMEE!!!</button>
                <span>{this.state.count}</span> 
            </div>
        );
    }
}

export default ClickCounter;