class UpdateStatus(object):
    def __init__(self, get_response) -> None:
        self.get_response = get_response

    def __call__(self,request):
        response = self.get_response(request)
        if(request.user.id):
            request.user.save()
        return response
    

# class WebSocketUserStatus(object):
#     def __init__(self,app):
#         self.app = app

#     def __call__(self,scope,receive,send):
#         if(scope['user'].id):
#             print("good job")
#             scope['user'].save()
#         return self.app(scope,receive,send)