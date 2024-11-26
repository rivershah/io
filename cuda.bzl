def if_cuda(if_true, if_false = []):
    """Implements a conditional select for CUDA"""
    return if_false

def cuda_is_configured():
    """Returns true if CUDA is enabled"""
    return False

def if_cuda_is_configured(x):
    """Tests if CUDA was enabled during configuration"""
    return []

def cuda_deps():
    """Returns list of CUDA dependencies"""
    return []