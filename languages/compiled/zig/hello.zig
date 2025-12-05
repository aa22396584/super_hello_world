// Zig Hello World
// Zig 使用 std.debug.print 來輸出文字
// 需要引入標準函式庫

const std = @import("std");

pub fn main() void {
    std.debug.print("Hello, World!\n", .{});
}
