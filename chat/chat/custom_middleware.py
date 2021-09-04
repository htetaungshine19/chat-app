



class UpdateStatus(object):
    def __init__(self, get_response) -> None:
        self.get_response = get_response

    def __call__(self,request):
        response = self.get_response(request)
        if(request.user.id):
            request.user.save()
        return response
    

