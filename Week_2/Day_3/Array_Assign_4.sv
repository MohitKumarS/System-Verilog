module arr1;
  int arr[int];
  int i,temp;
  
  initial begin
    for(i=50;i<500;i++)begin
      if(i%3==0 || i%7==0)begin
        arr[temp] = i;
        $display("arr = %0d",arr[temp]);
        temp++;
      end
    end
  end
endmodule

// Output

// arr = 51
// arr = 54
// arr = 56
// arr = 57
// arr = 60
// arr = 63
// arr = 66
// arr = 69
// arr = 70
// arr = 72
// arr = 75
// arr = 77
// arr = 78
// arr = 81
// arr = 84
// arr = 87
// arr = 90
// arr = 91
// arr = 93
// arr = 96
// arr = 98
// arr = 99
// arr = 102
// arr = 105
// arr = 108
// arr = 111
// arr = 112
// arr = 114
// arr = 117
// arr = 119
// arr = 120
// arr = 123
// arr = 126
// arr = 129
// arr = 132
// arr = 133
// arr = 135
// arr = 138
// arr = 140
// arr = 141
// arr = 144
// arr = 147
// arr = 150
// arr = 153
// arr = 154
// arr = 156
// arr = 159
// arr = 161
// arr = 162
// arr = 165
// arr = 168
// arr = 171
// arr = 174
// arr = 175
// arr = 177
// arr = 180
// arr = 182
// arr = 183
// arr = 186
// arr = 189
// arr = 192
// arr = 195
// arr = 196
// arr = 198
// arr = 201
// arr = 203
// arr = 204
// arr = 207
// arr = 210
// arr = 213
// arr = 216
// arr = 217
// arr = 219
// arr = 222
// arr = 224
// arr = 225
// arr = 228
// arr = 231
// arr = 234
// arr = 237
// arr = 238
// arr = 240
// arr = 243
// arr = 245
// arr = 246
// arr = 249
// arr = 252
// arr = 255
// arr = 258
// arr = 259
// arr = 261
// arr = 264
// arr = 266
// arr = 267
// arr = 270
// arr = 273
// arr = 276
// arr = 279
// arr = 280
// arr = 282
// arr = 285
// arr = 287
// arr = 288
// arr = 291
// arr = 294
// arr = 297
// arr = 300
// arr = 301
// arr = 303
// arr = 306
// arr = 308
// arr = 309
// arr = 312
// arr = 315
// arr = 318
// arr = 321
// arr = 322
// arr = 324
// arr = 327
// arr = 329
// arr = 330
// arr = 333
// arr = 336
// arr = 339
// arr = 342
// arr = 343
// arr = 345
// arr = 348
// arr = 350
// arr = 351
// arr = 354
// arr = 357
// arr = 360
// arr = 363
// arr = 364
// arr = 366
// arr = 369
// arr = 371
// arr = 372
// arr = 375
// arr = 378
// arr = 381
// arr = 384
// arr = 385
// arr = 387
// arr = 390
// arr = 392
// arr = 393
// arr = 396
// arr = 399
// arr = 402
// arr = 405
// arr = 406
// arr = 408
// arr = 411
// arr = 413
// arr = 414
// arr = 417
// arr = 420
// arr = 423
// arr = 426
// arr = 427
// arr = 429
// arr = 432
// arr = 434
// arr = 435
// arr = 438
// arr = 441
// arr = 444
// arr = 447
// arr = 448
// arr = 450
// arr = 453
// arr = 455
// arr = 456
// arr = 459
// arr = 462
// arr = 465
// arr = 468
// arr = 469
// arr = 471
// arr = 474
// arr = 476
// arr = 477
// arr = 480
// arr = 483
// arr = 486
// arr = 489
// arr = 490
// arr = 492
// arr = 495
// arr = 497
// arr = 498
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
// Fri Jun  9 00:18:19 2023
