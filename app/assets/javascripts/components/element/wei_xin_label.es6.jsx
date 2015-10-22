"use strict";
class WeiXinLabel extends React.Component {
    constructor(props) {
        super(props);
        this.state = {opened: props.opened};
    }

    tick() {
        this.setState({opened: !this.state.opened});
    }

    render() {
        return (
            <div className='weixin_tag'>
                <div onClick={this.tick.bind(this)}>Find Me in 微信</div>
                <div style={{ display: this.state.opened ? 'inline' : 'none'}}>
                    <img src="/imgs/mmqrcode.png" height="120" width="120"></img>
                </div>
            </div>
        );
    }
}
WeiXinLabel.propTypes = {opened: React.PropTypes.bool};
WeiXinLabel.defaultProps = {opened: false};
