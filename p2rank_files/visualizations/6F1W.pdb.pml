
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/6F1W.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/6F1W.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [6753,6756,1379,4649,6730,6805,6806,5960,9237,9239,6714,6807,1377,4673,4674,4676,4671,9262,6817,9260,9261,5859,5876,6741,5877,5882,5886,5887,5888,6740,1376,1375,1252,1253,2095,2106,2100,2105,5944,5953,5943,6010,6012,6014,9234,9235,2118,6011,6016,6013,5945,2079,1325,4652,4654,1308,1309,1251,1310,2170,2172,4677,2121] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [4967,5843,5184,5185,5003,4980,5214,4981,5001,5002,5004,5900,6696,5948,6648,6697,6698,4993,5858,5859,5860,5878,5896,5856,5424,6919,5216,5217,5218,5354,5423,6663,6926,5862,6904,6907,5861,5809,5811,5812,5779,4963] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [288,289,290,471,496,470,500,502,1139,1140,1142,1144,224,228,1221,1225,1174,1176,2063,1177,1222,1223,1224,1243,2061,2013,2028,2062,2269,2272,2284,2285,2288,2289,2291,695,1261,1265,249,250,259,260,504,247,2271] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [7403,7377,7395,7399,7402,7389,8189,8115,8138,8116,7995,7983] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [4456,4457,1633,1635,4376,1581,1564,1632,4586,4433,4434,4435,4437,4432,1587,4584] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [781,783,718,721,707,659,1028,1026,1027] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        