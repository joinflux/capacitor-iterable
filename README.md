# capacitor-iterable

Capacitor plugin for Iterable SDK

## Install

```bash
npm install @joinflux/capacitor-iterable
npx cap sync
```

## API

<docgen-index>

* [`initialize(...)`](#initialize)
* [`setEmail(...)`](#setemail)
* [`setUserId(...)`](#setuserid)
* [`register(...)`](#register)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### initialize(...)

```typescript
initialize(initOpts: { apiKey: string; }) => Promise<void>
```

| Param          | Type                             |
| -------------- | -------------------------------- |
| **`initOpts`** | <code>{ apiKey: string; }</code> |

--------------------


### setEmail(...)

```typescript
setEmail(setEmailOpts: { email: string; }) => Promise<void>
```

| Param              | Type                            |
| ------------------ | ------------------------------- |
| **`setEmailOpts`** | <code>{ email: string; }</code> |

--------------------


### setUserId(...)

```typescript
setUserId(setUserIdOpts: { userId: string; }) => Promise<void>
```

| Param               | Type                             |
| ------------------- | -------------------------------- |
| **`setUserIdOpts`** | <code>{ userId: string; }</code> |

--------------------


### register(...)

```typescript
register(registerOpts: { token: string; }) => Promise<void>
```

| Param              | Type                            |
| ------------------ | ------------------------------- |
| **`registerOpts`** | <code>{ token: string; }</code> |

--------------------

</docgen-api>
