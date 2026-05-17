
// 示例代码：包含一些可以优化的问题
function findDuplicates(arr) {
  const duplicates = [];
  for (let i = 0; i < arr.length; i++) {
    for (let j = i + 1; j < arr.length; j++) {
      if (arr[i] === arr[j] &amp;&amp; !duplicates.includes(arr[i])) {
        duplicates.push(arr[i]);
      }
    }
  }
  return duplicates;
}

// 重复计算的示例
function calculateTotal(items) {
  let total = 0;
  for (let i = 0; i &lt; items.length; i++) {
    total += items[i].price * items[i].quantity;
  }
  return total;
}

function applyDiscount(items, discount) {
  let total = 0;
  for (let i = 0; i &lt; items.length; i++) {
    total += items[i].price * items[i].quantity;
  }
  return total * (1 - discount);
}
