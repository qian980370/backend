package com.zq.backend.common;

public interface Constant {

    enum CODE{

    }

    enum MESSAGE{

    }

    String CODE_200 = "200"; //成功
    String CODE_500 = "500"; //内部错误
    String CODE_401 = "401"; //非法操作

    // 隐私类非法操作
    String PMSG_blocked_user = "当前用户将您屏蔽";
    String PMSG_cancel_block = "屏蔽关系拥有者不属于您";
    String PMSG_cancel_follow = "关注关系拥有者不属于您";

    // 非法操作
    String IMSG_invalid_input = "空白的电话或密码";
    String IMSG_empty_id = "缺失用户id";
    String IMSG_id_token_unmatched = "目标更新id与token解析结果不匹配";
    String IMSG_empty_token = "请求缺少token";
    String IMSG_invalid_hobby = "非法兴趣输入，请检查兴趣id是否存在或兴趣列表格式是否正确";
    String IMSG_invalid_album = "非法相册输入，请检查照片id是否存在或相册列表格式是否正确";
    String IMSG_invalid_icon = "非法头像输入，请检查照片id是否存在";
    String IMSG_bad_authority = "缺少权限";
    String IMSG_not_exist_user = "对象用户不存在";
    String IMSG_invalid_target = "请求不支持将自身作为对象";
    String IMSG_duplicate_request = "关系已存在，请勿重复请求相同对象";
    String IMSG_invalid_sql_query = "错误的sql语句";
    String IMSG_not_exist_block = "屏蔽关系不存在";
    String IMSG_not_exist_follow = "关注关系不存在";
    String IMSG_not_exist_invitation = "邀约关系不存在";
    String IMSG_locked_invitation = "您无法更新已经被拒绝或取消的邀约";
    String IMSG_bad_accept_refuse_invitation = "您无法接受或拒绝自己的邀约";
    String IMSG_cancel_invitation = "被邀约方无法取消未成立的邀约";
    String IMSG_state_invitation = "非法邀约状态更新请求";

    // 输入校验未通过 可向用户展示
    String MSG_blocked_user = "您已经将当前用户屏蔽";
    String MSG_duplicate_hobby = "您已经拥有此兴趣，请勿重复添加";
    String MSG_passwords_unmatched = "旧密码错误";
    String MSG_passwords_duplicated = "新旧密码无差别";
    String MSG_bad_password_format = "密码格式错误";
    String MSG_login_fail = "登陆失败，请检查您的电话号码或密码";
    String MSG_invalid_telephone = "电话号码已经被使用";
    String MSG_invalid_idcard = "身份证已经使用";
    String MSG_invalid_wechat = "微信已经被使用";
    String MSG_invalid_height = "身高输入不合法";
    String MSG_invalid_married = "已婚状态不合法";
    String MSG_invalid_gender = "性别输入不合法";
    String MSG_invalid_Education = "教育输入不合法";
    String MSG_invalid_Smoking = "吸烟输入不合法";
    String MSG_invalid_Drinking = "饮酒输入不合法";

    // 成功信息
    String SMSG_check_invitation = "目标用户已经向您发起邀约，请检查邀约列表并决定是否同意";
}
