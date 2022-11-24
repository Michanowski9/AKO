

int main() {
	unsigned char p;
	unsigned short int proba = 0x1234;
	unsigned char* wsk = (unsigned char*)&proba;
	p = *wsk;

	/* answer:
	 * BigEndian
	 * 
	 *	in memory:
	 *	00: ..
	 *		12 <- proba
	 *		34 
	 *	FF: ..
	 * 
	 *	unsigned short int proba = 0x1234;
	 *		proba is an address to first byte of dw
	 *		at this address is placed 0x1234
	 *	unsigned char* wsk = (unsigned char*)&proba;
	 *		wsk stores address of proba
	 *	p = *wsk;
	 *		wsk is address of proba
	 *		in asm: wsk
	 *		*wsk returns first byte of proba
	 *		in asm: [wsk]
	 *			
	 *  p = 0x12
	 *		=> BigEndian
	 */


	return 0;
}