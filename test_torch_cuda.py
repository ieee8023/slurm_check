import unittest

class TorchTests(unittest.TestCase):

    def test_torch_installed(self):
        import torch
        import torchvision


    def test_torch_cuda(self):
        import torch
        assert(torch.cuda.is_available())


    def test_torch_pretrained(self):
        import torch
        import torchvision
        model = torchvision.models.densenet121(pretrained=True)
        test = model(torch.zeros(1,3,224,244))