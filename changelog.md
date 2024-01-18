# Changelog

## 2024

### Jan 18th

> Updated flutter and dart sdk
> Some functions are deprecated now: 
   on main() 
      textScaleFactor: 1.0, switched to
         textScaler: const TextScaler.linear(1.0),

   on my splashscreen cubit file
      WillPopScope() now I used:
         PopScope(
            canPop: true,
            onPopInvoked: (_) async {},
            child: GestureDetector(),);
   
