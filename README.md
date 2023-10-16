# flutter_playground

### Outline text widget   

```dart

...
    // basic usage
    OutlineText(
        Text(
            "Hello World!!",
            style: Theme.of(context).textTheme.displaySmall,
        ),
    ),

    // with options
    SizedBox(
        width: 200,
        child: OutlineText(
            Text(
                "Hello World!! Hello World",
                style: Theme.of(context).textTheme.displaySmall,
                textScaleFactor: 0.9,
                overflow: TextOverflow.ellipsis,
            ),
            strokeWidth: 2,
            strokeColor: Colors.amber,
            overflow: TextOverflow.ellipsis,
        ),
    )
...

```


![image](https://homebakedcode.com/assets/images/posts/flutter_outline_text_sample.png)



