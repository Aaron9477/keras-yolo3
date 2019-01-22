import numpy as np




def rand(a=0, b=1):
    # np.random.rand()返回一个或一组服从“0~1”均匀分布的随机样本值
    return np.random.rand()*(b-a) + a

w = 320
h = 320
nh = 1080
nw = 1920

jitter = 0.3

# resize image
new_ar = w / h * rand(1 - jitter, 1 + jitter) / rand(1 - jitter, 1 + jitter)
scale = rand(.25, 2)
if new_ar < 1:
    nh = int(scale * h)
    nw = int(nh * new_ar)
else:
    nw = int(scale * w)
    nh = int(nw / new_ar)

dx = int(rand(0, w-nw))
dy = int(rand(0, h-nh))

print("nh: ", nh, " nw: ", nw)
print("dx: ", dx, " dy: ", dy)