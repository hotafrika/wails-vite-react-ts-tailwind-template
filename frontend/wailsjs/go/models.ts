export namespace main {
	
	export class Position {
	    id: string;
	    name: string;
	    picture: string;
	    type: string;
	    tags: string;
	
	    static createFrom(source: any = {}) {
	        return new Position(source);
	    }
	
	    constructor(source: any = {}) {
	        if ('string' === typeof source) source = JSON.parse(source);
	        this.id = source["id"];
	        this.name = source["name"];
	        this.picture = source["picture"];
	        this.type = source["type"];
	        this.tags = source["tags"];
	    }
	}

}

