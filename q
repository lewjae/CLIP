[33mcommit bdecadd9af810bb7c3942bbc75b121aa068e361c[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m)[m
Author: lewjae <lewjae@gmail.com>
Date:   Wed Oct 13 12:31:58 2021 -0700

    removed roboflow stuff

[33mcommit 307ac8313da1558f21f65d6d3fbf7cd2b4605bc4[m
Author: lewjae <lewjae@gmail.com>
Date:   Wed Oct 13 12:27:00 2021 -0700

    add gs test stuff

[33mcommit 04f4dc2ca1ed0acc9893bd1a3b526a7e02c4bb10[m[33m ([m[1;31morigin/main[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Fri Sep 24 00:57:32 2021 -0400

    fix prompts format

[33mcommit 4496d72f25565ab2aadd771c18aacda0d44fb3dd[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Thu Sep 23 23:21:49 2021 -0400

    fix eurosat templates

[33mcommit 7df882c55542c81d154eba5be0e41c00d3108e68[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Thu Sep 23 23:06:39 2021 -0400

    add prompt data

[33mcommit efe8cbbdf3e594999706558de021de55e04cab5f[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Thu Sep 23 21:56:48 2021 -0400

    added Country211 and Rendered SST2 dataset info

[33mcommit c13005fd422b20dcd11774e9fff46370887218e4[m
Author: Gianluca Gippetto <gianluca.gippetto@gmail.com>
Date:   Fri Sep 24 03:42:20 2021 +0200

    In Compose, replace lambda function with named function (#151)
    
    This prevents the following error on Windows (when using
    a multi-process DataLoader, for example):
    
    AttributeError: Can't pickle local object '_transform.<locals>.<lambda>'

[33mcommit 3b473b0e682c091a9e53623eebc1ca1657385717[m
Author: or-toledano <49984106+or-toledano@users.noreply.github.com>
Date:   Sun Aug 29 12:15:03 2021 +0300

    Reduce half of similarity muls after encoding (#140)
    
    (cAB)^T = c B^T A^T
    Saves half of the similarity products in the CLIP model.py after the visual/text encoding stages

[33mcommit 539cdcbd488bdc1fb29192c2355e1295657aee49[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Sun Aug 29 02:08:37 2021 -0700

    launch tests on push and PR to main (#145)

[33mcommit fa56f2525191a013533338f137aab59ac36d8c26[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Thu Aug 12 03:24:27 2021 -0700

    add test.yml (#139)

[33mcommit fcab8b6eb92af684e7ff0a904464be7b99b49b88[m
Author: or-toledano <49984106+or-toledano@users.noreply.github.com>
Date:   Mon Aug 9 11:29:38 2021 +0300

    Update Prompt_Engineering_for_ImageNet.ipynb (#137)
    
    * Can specify root directory when loading model
    
    * specifying download_root instead
    
    * Update Prompt_Engineering_for_ImageNet.ipynb
    
    Fix bug caused by changing default to jit=False with handling the case jit=True as well
    
    * Reduce size of diff
    
    * Reduce size of diff #2
    
    * Reduce size of diff #3
    
    * updated Interacting_with_CLIP.ipynb
    
    * update Prompt_Engineering_for_ImageNet.ipynb
    
    Co-authored-by: kcosta42 <kcosta@student.42.fr>
    Co-authored-by: Jong Wook Kim <jongwook@openai.com>

[33mcommit 22fde59cbe493282dd40a5337f9458003e1c224b[m
Author: Kevin Costa <kcosta@student.42.fr>
Date:   Mon Aug 9 08:43:22 2021 +0200

    Can specify root directory when loading model (#136)
    
    * Can specify root directory when loading model
    
    * specifying download_root instead
    
    Co-authored-by: Jong Wook Kim <jongwook@openai.com>

[33mcommit ff339871f3f6d975ec1aa449baae74339e992a40[m
Author: Santiago Castro <bryant1410@gmail.com>
Date:   Mon Aug 9 00:20:38 2021 -0600

    Use tqdm with 1024 instead of 1000 unit scale (#131)

[33mcommit 8cad3a736a833bc4c9b4dd34ef12b52ec0e68856[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Tue Jul 20 04:02:06 2021 -0700

    Update README.md

[33mcommit dff9d15305e92141462bd1aec8479994ab91f16a[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Mon Jul 19 04:46:29 2021 -0700

    add ViT-B/16 and RN50x16 models

[33mcommit ea41722f9fe6bb81189f41ab6c306e77e930c2af[m
Author: Haofan Wang <frankmiracle@outlook.com>
Date:   Mon Jul 19 11:41:49 2021 +0800

    Rename VisualTransformer -> VisionTransformer (#97)
    
    Fixes #94

[33mcommit 504cf9e49102691b2f6be3941722a8ca1d65ef94[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Sun Jul 18 20:28:30 2021 -0700

    test fix

[33mcommit a2737ac2644f46bb0a9785e4ddd3ad61aec3d468[m
Author: Romain Beaumont <romain.rom1@gmail.com>
Date:   Mon Jul 19 05:17:40 2021 +0200

    Add truncate option to tokenize (#126)
    
    * Add truncate_text option to tokenize
    
    This makes it possible to run tokenize on texts that are longer than the number of tokens
    that fit the context length without having to try to guess how to cut in number of
    characters beforehand
    
    * add doc, rename to just "truncate", use eot_token
    
    Co-authored-by: Jong Wook Kim <jongwook@openai.com>

[33mcommit db20393f4affd4158528bd868478e516ebed0944[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Sun Jul 18 18:45:21 2021 -0700

    Using non-JIT by default; compat fix with 1.8+

[33mcommit cfcffb90e69f37bf2ff1e988237a0fbe41f33c04[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Sun Apr 11 02:29:52 2021 -0700

    add YFCC100M subset information
    
    (#50)

[33mcommit 8a665a683d791ed3491fedadcb3c91878f9eb78d[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Tue Mar 23 03:05:17 2021 -0400

    fixed model loading issue (#66)

[33mcommit 290ac5cb1558745e56ea8cbcfcf8a9b8ba37182c[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Mon Mar 22 22:09:57 2021 -0400

    Correctly initializing the logit scale parameter
    
    adding numpy import

[33mcommit 43c953e23150ee1734ce8ca644dc93cfce3bd478[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Mon Mar 22 18:07:08 2021 -0400

    Correctly initializing the logit scale parameter
    
    cf. #46

[33mcommit beba48f35392a73c6c47ae67ddffced81ad1916d[m
Author: Smittyvb <me@smitop.com>
Date:   Sun Mar 7 21:58:54 2021 -0500

    Update models URIs in notebook (#52)

[33mcommit fd6c1443c2810c207fc6ea0cea10db6abf86e25d[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Thu Mar 4 12:30:39 2021 -0500

    add RN101 and RN50x4; update paper URL and model card

[33mcommit 4c0275784d6d9da97ca1f47eaaee31de1867da91[m
Author: Sebastian Berns <s.berns@qmul.ac.uk>
Date:   Tue Feb 16 11:19:42 2021 +0000

    Load model from path (#41)
    
    * Load model from path
    
    * showing download progress in "MiB"
    
    * clip.load() now can take a file path
    
    Co-authored-by: Jong Wook Kim <jongwook@openai.com>

[33mcommit 8f6deb52a1a8c2a20b60cf4ae8880fa2cfbc0f9c[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Mon Feb 15 22:00:33 2021 -0500

    showing download progress in "MiB"

[33mcommit e5347713f46ab8121aa81e610a68ea1d263b91b7[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Sat Jan 30 16:49:32 2021 +0900

    add prompt engineering notebook

[33mcommit d1cf43d17e10ed2e5553e41def6f2748ec389dec[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Sat Jan 30 06:33:56 2021 +0900

    using compatible version specifier in requirements.txt

[33mcommit c42a8e3c9ef848b9afd08aa7eca543107a7a47e4[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Sat Jan 30 03:26:10 2021 +0900

    added parameter initialization (fixes #15)

[33mcommit 4a443c18a49cd06fb5fc9da2897018c5decc8b4f[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Sat Jan 30 03:09:59 2021 +0900

    updated README.md to include pip install command

[33mcommit 3bee28119e6b28e75b82b811b87b56935314e6a5[m
Author: boba_and_beer <jacky2wong@gmail.com>
Date:   Sat Jan 30 05:05:01 2021 +1100

    Make the repo installable as a package (#26)

[33mcommit 578a1d3e2e8840ec7b9e825797780e44d904a669[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Sat Jan 30 00:22:03 2021 +0900

    moved the notebook to subfolder

[33mcommit 6bc0bd88737ac3b28a5b3288fdd13b7a6cd94b22[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Wed Jan 13 08:35:50 2021 +0900

    added RN50 checkpoint and non-JIT model implementation

[33mcommit ebd0e35aac063855694a1e6d2f6b2181acb7af0b[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Sat Jan 9 02:55:09 2021 +0900

    correctly tokenizing SOT/EOT tokens (fixes #8)

[33mcommit c89e0c16de96ad24dca82f77de244317613cd679[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Thu Jan 7 04:38:27 2021 +0900

    Update the paper URL

[33mcommit b1c4b6be5871f1b94359ba55901627f29ecc9ae9[m
Author: Jong Wook Kim <jongwook@openai.com>
Date:   Fri Dec 18 01:55:12 2020 +0900

    initial commit
