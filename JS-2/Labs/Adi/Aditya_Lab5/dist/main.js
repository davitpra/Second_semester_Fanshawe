(()=>{"use strict";const o={randomUUID:"undefined"!=typeof crypto&&crypto.randomUUID&&crypto.randomUUID.bind(crypto)};let t;const n=new Uint8Array(16);function e(){if(!t&&(t="undefined"!=typeof crypto&&crypto.getRandomValues&&crypto.getRandomValues.bind(crypto),!t))throw new Error("crypto.getRandomValues() not supported. See https://github.com/uuidjs/uuid#getrandomvalues-not-supported");return t(n)}const r=[];for(let o=0;o<256;++o)r.push((o+256).toString(16).slice(1));const s=function(t,n,s){if(o.randomUUID&&!n&&!t)return o.randomUUID();const c=(t=t||{}).random||(t.rng||e)();if(c[6]=15&c[6]|64,c[8]=63&c[8]|128,n){s=s||0;for(let o=0;o<16;++o)n[s+o]=c[o];return n}return function(o,t=0){return(r[o[t+0]]+r[o[t+1]]+r[o[t+2]]+r[o[t+3]]+"-"+r[o[t+4]]+r[o[t+5]]+"-"+r[o[t+6]]+r[o[t+7]]+"-"+r[o[t+8]]+r[o[t+9]]+"-"+r[o[t+10]]+r[o[t+11]]+r[o[t+12]]+r[o[t+13]]+r[o[t+14]]+r[o[t+15]]).toLowerCase()}(c)},c=class{constructor(o,t){this.id=s(),this.name=o,this.age=t}};console.log(c);const u=new class extends c{constructor(o,t,n){super(o,t),this.grades=n}}("Adi Maskey",20,"A+"),d=new class extends c{constructor(o,t,n){super(o,t),this.course=n}}("John Cena",40,"Web Development");console.log(u),console.log(d)})();