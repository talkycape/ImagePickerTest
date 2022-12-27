//
//  ImagePickerBook.swift
//  ImagePickerTest
//
//  Created by YACHIEH LAI on 12/26/22.
//

//struct ImagePicker: UIViewControllerRepresentable {
//    @Binding var openImagePicker: Bool
//    @Binding var picture: UIImage?
//
//    func makeUIViewController(context: Context) -> UIImagePickerController{
//        let mediaPicker = UIImagePickerController()
//        mediaPicker.delegate = context.coordinator
//        if UIImagePickerController.isSourceTypeAvailable(.camera) {
//            mediaPicker.sourceType = .camera
//            mediaPicker.mediaTypes = ["public.image"]
//            mediaPicker.allowsEditing = false
//            mediaPicker.cameraCaptureMode = .photo
//        } else {
//            print("The media is not available")
//        }
//        return mediaPicker
//    }
//    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
//    func makeCoordinator() -> ImagePickerCoordinator {
//        ImagePickerCoordinator(open: $openImagePicker, picture: $picture)
//    }
//}
//class ImagePickerCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
//    @Binding var openImagePicker: Bool
//    @Binding var picture: UIImage?
//
//    init(open: Binding<Bool>, picture: Binding<UIImage?>) {
//        self._openImagePicker = open
//        self._picture = picture
//    }
//    func imagePickerController(_ picker: UIImagePickerController,
//                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        if let newpicture = info[.originalImage] as? UIImage {
//            picture = newpicture
//        }
//        openImagePicker = false
//    }
//    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//        openImagePicker = false
//    }
//}
//
//class ContentData: ObservableObject {
//    @Published var openImagePicker: Bool = false
//    @Published var picture: UIImage?
//}
//
//struct ContentView: View {
//    @ObservedObject var contentData = ContentData()
//    @State var imagePicker: ImagePicker!
//
//    init() {
//        imagePicker = ImagePicker(openImagePicker: $contentData.openImagePicker, picture: $contentData.picture)
//    }
//    var body: some View {
//        NavigationView {
//            VStack {
//                HStack {
//                    Spacer()
//                    NavigationLink(
//                        destination: imagePicker
//                            .navigationBarTitle("")
//                            .navigationBarHidden(true)
//                            .edgesIgnoringSafeArea(.all),
////                        isActive: $contentData.openImagePicker,
//                        label: {
//                            Text("Get Picture")
//                        })
//                }
//                if let unwrapped = contentData.picture {
//                    Image(uiImage: unwrapped)
//                        .resizable()
//                        .scaledToFill()
//                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
//                        .clipped()
//                } else {
//                  Text("No Image")
//                }
//                Spacer()
//            }.padding()
//            .navigationBarTitle("")
//            .navigationBarHidden(true)
//        }.statusBar(hidden: true)
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
