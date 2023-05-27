package com.zq.backend.common;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * 返回接口
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Result {
    private String code;
    private String message;
    private Object data;

    public static Result success(){
        return new Result(Constant.CODE_200, "", null);
    }

    public static Result success(Object data){
        return new Result(Constant.CODE_200, "", data);
    }

    public static Result error(){
        return new Result(Constant.CODE_500, "", null);
    }

    public static Result error(String code, String msg){
        return new Result(code, msg, null);
    }

}


/**
 * public class Items {
 *     private String ItemCode;
 *     //首先约定好物品id
 *     public Integer banana = 1;
 *     public Integer rum = 2;
 *     private Integer quantity = 0;//记录当前玩家有几个当前物品 比如创建一个Items banana = new Items(Items.banana)在初始化时一般就设为1，
 *     get(Items.banana)  get(1)
 *     //在尝试获取时会检查这类物品的获取上限
 *     //可以用list存储一些固定final数据，并以id对应特定属性例如维护三个表 一个是物品名称 一个是物品id 一个是物品数量上限，index一一对应代码写起来可读性更高这种情况下你就把上面的
 *     //属性移至list中做好一一对应就好
 *
 *
 *     //基础的 get set initialize 方法
 *
 *
 *     // 你给自己或别人使用道具，给自己就两个user都是自己
 *     public boolean applyItem(User owner, User targetUser){
 *         //根据ItemCode分支判断使用效果，更新user状态，清出user背包中已经被使用的道具
 *         //给出使用结果
 *     }
 * }
 *
 */
/**
 * public class User {
 *     private String username;
 *     private Integer id；
 *     private List<Items> bag;
 *
 *     //基础的 get set initialize 方法
 *
 *     //获取道具更新bag的方法
 *     boolean getItem(User owner, Integer itemID)或者getItem(User owner, Item item)取决于你想在哪里创建item{
 *         //判断物品上限之类的操作
 *     }
 *
 *     // 你给自己或别人使用道具，给自己就两个user都是自己
 *     public boolean useItem(User owner, User targetUser, Items item){
 *         //检查user的 items list（背包）里有没有要使用的道具
 *         Boolean result = item.applyItem(owner, targetUser)；
 *         //根据结果给反馈
 *     }
 * }
 *
 */
